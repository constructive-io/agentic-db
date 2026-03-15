-- Deploy: schemas/agent_db_app_public/tables/events/columns/name/alterations/alt0000000895
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/events/table
-- requires: schemas/agent_db_app_public/tables/events/columns/name/column
-- requires: schemas/agent_db_app_public/tables/events/columns/updated_at/alterations/alt0000000894


ALTER TABLE agent_db_app_public.events 
  ALTER COLUMN name SET NOT NULL;

