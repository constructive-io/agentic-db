-- Deploy: schemas/agent_db_app_public/tables/interactions/columns/type/alterations/alt0000000926
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/interactions/table
-- requires: schemas/agent_db_app_public/tables/interactions/columns/type/column
-- requires: schemas/agent_db_app_public/tables/interactions/columns/contact_id/alterations/alt0000000925


ALTER TABLE agent_db_app_public.interactions 
  ALTER COLUMN type SET NOT NULL;

