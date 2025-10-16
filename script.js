use ColegiosEducativos

db.createCollection('Data')

db["Data"].find()

mongoimport --uri "mongodb+srv://stivenmartinezvillamizar:149600225j123.K*@cluster0.zsyjrwr.mongodb.net/VictimasMinasAntipersonales" --collection DataVictimas --type csv --headerline --file "C:/home/camper/Descargas/"


//EstablecimientoEducativo

db.Data.aggregate([
    {
      $group: {
        _id: "$nombreestablecimiento",
        año: { $first: "$año" },
        direccion: { $first: "$direccion" },
        telefono: { $first: "$telefono" },
        numero_de_Sede: { $first: "$numero_de_Sede" },
        correo_Electronico: { $first: "$correo_Electronico" },
      }
    },
    {
      $project: {
        _id: 0,
        nombreestablecimiento: "$_id",
        año: 1,
        direccion: 1,
        telefono:1,
        numero_de_Sede:1,
        correo_Electronico:1
        
      }
    },
    {
      $merge: {
        into: "EstablecimientoEducativo",
        whenMatched: "replace",
        whenNotMatched: "insert"
      }
    }
  ])
  
//Rector

  db.Data.aggregate([
    {
      $group: {
        _id: "$nombre_Rector",
        nombre_Rector: { $first: "$nombre_Rector" },
        
      }
    },
    {
      $project: {
        _id: 0,
        nombre_Rector: "$_id",
        nombre_Rector: 1,
        
        
      }
    },
    {
      $merge: {
        into: "Rector",
        whenMatched: "replace",
        whenNotMatched: "insert"
      }
    }
  ])
  
  //Especialidad

  db.Data.aggregate([
    {
      $group: {
        _id: "$nombre_Rector",
        nombre_Rector: { $first: "$nombre_Rector" },
        
      }
    },
    {
      $project: {
        _id: 0,
        nombre_Rector: "$_id",
        nombre_Rector: 1,
        
        
      }
    },
    {
      $merge: {
        into: "Especialidad",
        whenMatched: "replace",
        whenNotMatched: "insert"
      }
    }
  ])