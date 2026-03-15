-- Deploy: schemas/agent_db_app_public/tables/contacts/indexes/contacts_tags_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contacts/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/prompts/indexes/prompts_content_bm25_idx


CREATE INDEX contacts_tags_gin_idx ON "agent_db_app_public".contacts USING GIN ( tags );

