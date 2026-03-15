-- Deploy: schemas/agent_db_app_public/tables/rules/columns/title/alterations/alt0000001028
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/rules/table
-- requires: schemas/agent_db_app_public/tables/rules/columns/title/column
-- requires: schemas/agent_db_app_public/tables/rules/columns/updated_at/alterations/alt0000001027


ALTER TABLE agent_db_app_public.rules 
  ALTER COLUMN title SET NOT NULL;

