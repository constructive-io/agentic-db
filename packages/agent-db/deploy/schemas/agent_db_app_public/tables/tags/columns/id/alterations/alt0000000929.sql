-- Deploy: schemas/agent_db_app_public/tables/tags/columns/id/alterations/alt0000000929
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tags/table
-- requires: schemas/agent_db_app_public/tables/tags/columns/id/column
-- requires: schemas/agent_db_app_public/tables/interactions/columns/embedding/column


ALTER TABLE agent_db_app_public.tags 
  ALTER COLUMN id SET NOT NULL;

