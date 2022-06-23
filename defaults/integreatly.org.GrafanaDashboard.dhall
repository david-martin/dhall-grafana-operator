{ apiVersion = "v1alpha1"
, kind = "GrafanaDashboard"
, spec =
    None
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
, status = None (List { mapKey : Text, mapValue : Text })
}
