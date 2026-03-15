-- Deploy: schemas/agent_db_app_public/tables/notes/columns/entity_id/alterations/alt0000000910
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notes/table
-- requires: schemas/agent_db_app_public/tables/notes/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/venues/columns/main_image_id/column


ALTER TABLE agent_db_app_public.notes 
  ALTER COLUMN entity_id SET NOT NULL;

