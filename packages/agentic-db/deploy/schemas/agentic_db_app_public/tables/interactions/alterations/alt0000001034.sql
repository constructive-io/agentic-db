-- Deploy: schemas/agentic_db_app_public/tables/interactions/alterations/alt0000001034
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table


COMMENT ON TABLE "agentic_db_app_public".interactions IS E'@@hasChunks {"chunks_table": "interactions_chunks", "embedding_field": "embedding"}\\n@@searchConfig {"weights": {"bm25": 1.0}, "bm25_field": "embedding_text", "bm25_text_config": "english"}';

