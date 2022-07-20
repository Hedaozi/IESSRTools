using System;

namespace IESSRTools.Core.DotNetFramework.Utils
{
    public static class Grammar
    {
        public static void With<T>(this T _object, Action<T> _action)
        {
            _action(_object);
        }

        public static void CopyProperties<T>(this T _object, T _copied)
        {
            foreach (System.Reflection.PropertyInfo property in _copied.GetType().GetProperties())
            {
                property.SetValue(_object, property.GetValue(_copied));
            }
        }
    }
}
