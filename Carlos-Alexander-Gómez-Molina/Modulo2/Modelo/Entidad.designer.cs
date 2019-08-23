﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Modelo
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="Usuarios")]
	public partial class EntidadDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Definiciones de métodos de extensibilidad
    partial void OnCreated();
    partial void Insertpersona(persona instance);
    partial void Updatepersona(persona instance);
    partial void Deletepersona(persona instance);
    partial void Insertrol(rol instance);
    partial void Updaterol(rol instance);
    partial void Deleterol(rol instance);
    partial void InsertUsuario(Usuario instance);
    partial void UpdateUsuario(Usuario instance);
    partial void DeleteUsuario(Usuario instance);
    #endregion
		
		public EntidadDataContext() : 
				base(global::Modelo.Properties.Settings.Default.UsuariosConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public EntidadDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public EntidadDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public EntidadDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public EntidadDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<persona> persona
		{
			get
			{
				return this.GetTable<persona>();
			}
		}
		
		public System.Data.Linq.Table<rol> rol
		{
			get
			{
				return this.GetTable<rol>();
			}
		}
		
		public System.Data.Linq.Table<Usuario> Usuario
		{
			get
			{
				return this.GetTable<Usuario>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.persona")]
	public partial class persona : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _id;
		
		private int _documento;
		
		private string _coreo;
		
		private int _id_usuario;
		
		private string _nombre;
		
		private EntityRef<Usuario> _Usuario;
		
    #region Definiciones de métodos de extensibilidad
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidChanging(int value);
    partial void OnidChanged();
    partial void OndocumentoChanging(int value);
    partial void OndocumentoChanged();
    partial void OncoreoChanging(string value);
    partial void OncoreoChanged();
    partial void Onid_usuarioChanging(int value);
    partial void Onid_usuarioChanged();
    partial void OnnombreChanging(string value);
    partial void OnnombreChanged();
    #endregion
		
		public persona()
		{
			this._Usuario = default(EntityRef<Usuario>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int id
		{
			get
			{
				return this._id;
			}
			set
			{
				if ((this._id != value))
				{
					this.OnidChanging(value);
					this.SendPropertyChanging();
					this._id = value;
					this.SendPropertyChanged("id");
					this.OnidChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_documento", DbType="Int NOT NULL")]
		public int documento
		{
			get
			{
				return this._documento;
			}
			set
			{
				if ((this._documento != value))
				{
					this.OndocumentoChanging(value);
					this.SendPropertyChanging();
					this._documento = value;
					this.SendPropertyChanged("documento");
					this.OndocumentoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_coreo", DbType="VarChar(30) NOT NULL", CanBeNull=false)]
		public string coreo
		{
			get
			{
				return this._coreo;
			}
			set
			{
				if ((this._coreo != value))
				{
					this.OncoreoChanging(value);
					this.SendPropertyChanging();
					this._coreo = value;
					this.SendPropertyChanged("coreo");
					this.OncoreoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id_usuario", DbType="Int NOT NULL")]
		public int id_usuario
		{
			get
			{
				return this._id_usuario;
			}
			set
			{
				if ((this._id_usuario != value))
				{
					if (this._Usuario.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.Onid_usuarioChanging(value);
					this.SendPropertyChanging();
					this._id_usuario = value;
					this.SendPropertyChanged("id_usuario");
					this.Onid_usuarioChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_nombre", DbType="VarChar(30) NOT NULL", CanBeNull=false)]
		public string nombre
		{
			get
			{
				return this._nombre;
			}
			set
			{
				if ((this._nombre != value))
				{
					this.OnnombreChanging(value);
					this.SendPropertyChanging();
					this._nombre = value;
					this.SendPropertyChanged("nombre");
					this.OnnombreChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Usuario_persona", Storage="_Usuario", ThisKey="id_usuario", OtherKey="id", IsForeignKey=true)]
		public Usuario Usuario
		{
			get
			{
				return this._Usuario.Entity;
			}
			set
			{
				Usuario previousValue = this._Usuario.Entity;
				if (((previousValue != value) 
							|| (this._Usuario.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._Usuario.Entity = null;
						previousValue.persona.Remove(this);
					}
					this._Usuario.Entity = value;
					if ((value != null))
					{
						value.persona.Add(this);
						this._id_usuario = value.id;
					}
					else
					{
						this._id_usuario = default(int);
					}
					this.SendPropertyChanged("Usuario");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.rol")]
	public partial class rol : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _id;
		
		private string _nombre;
		
		private EntitySet<Usuario> _Usuario;
		
    #region Definiciones de métodos de extensibilidad
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidChanging(int value);
    partial void OnidChanged();
    partial void OnnombreChanging(string value);
    partial void OnnombreChanged();
    #endregion
		
		public rol()
		{
			this._Usuario = new EntitySet<Usuario>(new Action<Usuario>(this.attach_Usuario), new Action<Usuario>(this.detach_Usuario));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int id
		{
			get
			{
				return this._id;
			}
			set
			{
				if ((this._id != value))
				{
					this.OnidChanging(value);
					this.SendPropertyChanging();
					this._id = value;
					this.SendPropertyChanged("id");
					this.OnidChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_nombre", DbType="VarChar(30) NOT NULL", CanBeNull=false)]
		public string nombre
		{
			get
			{
				return this._nombre;
			}
			set
			{
				if ((this._nombre != value))
				{
					this.OnnombreChanging(value);
					this.SendPropertyChanging();
					this._nombre = value;
					this.SendPropertyChanged("nombre");
					this.OnnombreChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="rol_Usuario", Storage="_Usuario", ThisKey="id", OtherKey="id_rol")]
		public EntitySet<Usuario> Usuario
		{
			get
			{
				return this._Usuario;
			}
			set
			{
				this._Usuario.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_Usuario(Usuario entity)
		{
			this.SendPropertyChanging();
			entity.rol = this;
		}
		
		private void detach_Usuario(Usuario entity)
		{
			this.SendPropertyChanging();
			entity.rol = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Usuario")]
	public partial class Usuario : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _id;
		
		private string _users;
		
		private string _pass;
		
		private int _id_rol;
		
		private EntitySet<persona> _persona;
		
		private EntityRef<rol> _rol;
		
    #region Definiciones de métodos de extensibilidad
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidChanging(int value);
    partial void OnidChanged();
    partial void OnusersChanging(string value);
    partial void OnusersChanged();
    partial void OnpassChanging(string value);
    partial void OnpassChanged();
    partial void Onid_rolChanging(int value);
    partial void Onid_rolChanged();
    #endregion
		
		public Usuario()
		{
			this._persona = new EntitySet<persona>(new Action<persona>(this.attach_persona), new Action<persona>(this.detach_persona));
			this._rol = default(EntityRef<rol>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int id
		{
			get
			{
				return this._id;
			}
			set
			{
				if ((this._id != value))
				{
					this.OnidChanging(value);
					this.SendPropertyChanging();
					this._id = value;
					this.SendPropertyChanged("id");
					this.OnidChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_users", DbType="VarChar(20) NOT NULL", CanBeNull=false)]
		public string users
		{
			get
			{
				return this._users;
			}
			set
			{
				if ((this._users != value))
				{
					this.OnusersChanging(value);
					this.SendPropertyChanging();
					this._users = value;
					this.SendPropertyChanged("users");
					this.OnusersChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_pass", DbType="VarChar(20) NOT NULL", CanBeNull=false)]
		public string pass
		{
			get
			{
				return this._pass;
			}
			set
			{
				if ((this._pass != value))
				{
					this.OnpassChanging(value);
					this.SendPropertyChanging();
					this._pass = value;
					this.SendPropertyChanged("pass");
					this.OnpassChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id_rol", DbType="Int NOT NULL")]
		public int id_rol
		{
			get
			{
				return this._id_rol;
			}
			set
			{
				if ((this._id_rol != value))
				{
					if (this._rol.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.Onid_rolChanging(value);
					this.SendPropertyChanging();
					this._id_rol = value;
					this.SendPropertyChanged("id_rol");
					this.Onid_rolChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Usuario_persona", Storage="_persona", ThisKey="id", OtherKey="id_usuario")]
		public EntitySet<persona> persona
		{
			get
			{
				return this._persona;
			}
			set
			{
				this._persona.Assign(value);
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="rol_Usuario", Storage="_rol", ThisKey="id_rol", OtherKey="id", IsForeignKey=true)]
		public rol rol
		{
			get
			{
				return this._rol.Entity;
			}
			set
			{
				rol previousValue = this._rol.Entity;
				if (((previousValue != value) 
							|| (this._rol.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._rol.Entity = null;
						previousValue.Usuario.Remove(this);
					}
					this._rol.Entity = value;
					if ((value != null))
					{
						value.Usuario.Add(this);
						this._id_rol = value.id;
					}
					else
					{
						this._id_rol = default(int);
					}
					this.SendPropertyChanged("rol");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_persona(persona entity)
		{
			this.SendPropertyChanging();
			entity.Usuario = this;
		}
		
		private void detach_persona(persona entity)
		{
			this.SendPropertyChanging();
			entity.Usuario = null;
		}
	}
}
#pragma warning restore 1591
