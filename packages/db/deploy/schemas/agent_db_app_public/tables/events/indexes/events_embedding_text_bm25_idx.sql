-- Deploy: schemas/agent_db_app_public/tables/events/indexes/events_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/events/table
-- requires: schemas/agent_db_app_public/tables/events/columns/embedding_text/column
-- requires: schemas/agent_db_app_public/tables/deals/indexes/deals_embedding_text_bm25_idx


CREATE INDEX events_embedding_text_bm25_idx ON "agent_db_app_public".events USING bm25 ( embedding_text ) WITH ( text_config = english );

