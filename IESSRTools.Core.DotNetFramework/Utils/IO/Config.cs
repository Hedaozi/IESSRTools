using System.IO;
using YamlDotNet.Serialization;
using YamlDotNet.Serialization.NamingConventions;

namespace IESSRTools.Core.DotNetFramework.Utils.IO
{
    public interface ConfigBase
    {
        ConfigBase Default();
    }

    public class ConfigManager<T> where T : ConfigBase, new()
    {
        private readonly string configPath;
        private string ConfigFolder => System.IO.Path.GetDirectoryName(configPath);

        private readonly static IDeserializer deserializer = new DeserializerBuilder()
            .WithNamingConvention(PascalCaseNamingConvention.Instance)
            .Build();
        private readonly static ISerializer serializer = new SerializerBuilder()
            .WithNamingConvention(PascalCaseNamingConvention.Instance)
            .Build();

        public ConfigManager(string configPath)
        {
            this.configPath = configPath;
        }

        public T Duplicate(T mould)
        {
            var copy = new T();
            foreach (var property in typeof(T).GetProperties())
            {
                property.SetValue(copy, property.GetValue(mould));
            }
            return copy;
        }

        public void Overwrite(T target, T mould)
        {
            foreach (var property in typeof(T).GetProperties())
            {
                property.SetValue(target, property.GetValue(mould));
            }
        }

        public T Load()
        {
            if (File.Exists(configPath))
            {
                using (var stream = new StreamReader(configPath))
                {
                    var yaml = stream.ReadToEnd();
                    return deserializer.Deserialize<T>(yaml);
                }
            }
            var config = new T().Default();
            Save((T)config);
            return (T)config;
        }

        public void Save(T config)
        {
            if (!Directory.Exists(ConfigFolder))
            {
                Directory.CreateDirectory(ConfigFolder);
            }
            using (var stream = new StreamWriter(configPath))
            {
                serializer.Serialize(stream, config);
            }
            return;
        }
    }
}
