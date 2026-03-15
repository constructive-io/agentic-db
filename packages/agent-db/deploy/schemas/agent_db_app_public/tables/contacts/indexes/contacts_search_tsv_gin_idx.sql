-- Deploy: schemas/agent_db_app_public/tables/contacts/indexes/contacts_search_tsv_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contacts/columns/search_tsv/column
-- requires: schemas/agent_db_app_public/tables/skill_executions/indexes/skill_executions_output_gin_idx


CREATE INDEX contacts_search_tsv_gin_idx ON "agent_db_app_public".contacts USING GIN ( search_tsv );

