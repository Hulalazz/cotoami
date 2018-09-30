module App.Modals.ImportModalMsg
    exposing
        ( ImportResult
        , ImportCotosResult
        , ImportConnectionsResult
        , Reject
        , Msg(..)
        )

import Http


type alias ImportResult =
    { cotos : ImportCotosResult
    , connections : ImportConnectionsResult
    }


type alias ImportCotosResult =
    { inserts : Int
    , updates : Int
    , cotonomas : Int
    , rejected : List Reject
    }


type alias ImportConnectionsResult =
    { ok : Int
    , rejected : List Reject
    }


type alias Reject =
    { json : String
    , reason : String
    }


type Msg
    = ImportClick
    | ImportDone (Result Http.Error ImportResult)
