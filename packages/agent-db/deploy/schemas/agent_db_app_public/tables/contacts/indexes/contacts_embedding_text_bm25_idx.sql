-- Deploy: schemas/agent_db_app_public/tables/contacts/indexes/contacts_embedding_text_bm25_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contacts/columns/embedding_text/column
-- requires: schemas/agent_db_app_public/tables/skills/indexes/skills_intent_trigger_hnsw_idx


CREATE INDEX contacts_embedding_text_bm25_idx ON "agent_db_app_public".contacts USING bm25 ( embedding_text ) WITH ( text_config = english );

