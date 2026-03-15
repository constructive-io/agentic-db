-- Deploy: schemas/agent_db_app_public/tables/trips/indexes/trips_embedding_text_bm25_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/trips/table
-- requires: schemas/agent_db_app_public/tables/trips/columns/embedding_text/column
-- requires: schemas/agent_db_app_public/tables/documents/indexes/documents_embedding_text_bm25_idx


CREATE INDEX trips_embedding_text_bm25_idx ON "agent_db_app_public".trips USING bm25 ( embedding_text ) WITH ( text_config = english );

