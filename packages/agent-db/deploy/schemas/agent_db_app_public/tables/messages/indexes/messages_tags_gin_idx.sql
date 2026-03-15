-- Deploy: schemas/agent_db_app_public/tables/messages/indexes/messages_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/messages/table
-- requires: schemas/agent_db_app_public/tables/messages/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/repositories/indexes/repositories_tags_gin_idx


CREATE INDEX messages_tags_gin_idx ON agent_db_app_public.messages USING GIN ( tags );

