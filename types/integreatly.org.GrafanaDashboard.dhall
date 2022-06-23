let Kubernetes = (../imports.dhall).Kubernetes

{ apiVersion : Text
, kind : Text
, metadata : Kubernetes.ObjectMeta.Type
, spec :
    Optional
      { configMapRef :
          Optional
            { key : Text, name : Optional Text, optional : Optional Bool }
      , customFolderName : Optional Text
      , datasources :
          Optional (List { datasourceName : Text, inputName : Text })
      , grafanaCom : Optional { id : Integer, revision : Optional Integer }
      , json : Optional Text
      , jsonnet : Optional Text
      , plugins : Optional (List { name : Text, version : Text })
      , url : Optional Text
      }
, status : Optional (List { mapKey : Text, mapValue : Text })
}
