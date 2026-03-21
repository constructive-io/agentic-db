-- Deploy: schemas/agentic_db_app_public/tables/project_contacts/columns/entity_id/alterations/alt0000004713
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_contacts/table
-- requires: schemas/agentic_db_app_public/tables/project_contacts/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/templates/indexes/templates_is_active_idx


ALTER TABLE agentic_db_app_public.project_contacts 
  ALTER COLUMN entity_id SET NOT NULL;

