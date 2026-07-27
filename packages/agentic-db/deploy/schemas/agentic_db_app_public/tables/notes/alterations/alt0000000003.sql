-- Deploy: schemas/agentic_db_app_public/tables/notes/alterations/alt0000000003
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table


COMMENT ON TABLE agentic_db_app_public.notes IS E'@@hasChunks {"parentFk": "notes_id", "parentPk": "id", "chunksTable": "notes_chunks", "searchField": null, "contentField": "content", "searchIndexes": ["bm25"], "embeddingField": "embedding"}
@@searchConfig {"weights": {"bm25": 1}, "bm25_field": "embedding_text", "bm25_text_config": "english"}';

