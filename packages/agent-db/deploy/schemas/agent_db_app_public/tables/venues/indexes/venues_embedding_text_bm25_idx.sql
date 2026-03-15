-- Deploy: schemas/agent_db_app_public/tables/venues/indexes/venues_embedding_text_bm25_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/embedding_text/column
-- requires: schemas/agent_db_app_public/tables/events/indexes/events_embedding_text_bm25_idx


CREATE INDEX venues_embedding_text_bm25_idx ON agent_db_app_public.venues USING bm25 ( embedding_text ) WITH ( text_config = english );

