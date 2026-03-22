-- Deploy: schemas/agentic_db_app_public/tables/interactions/columns/type/alterations/alt0000005626
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table
-- requires: schemas/agentic_db_app_public/tables/interactions/columns/type/column
-- requires: schemas/agentic_db_app_public/tables/interactions/columns/contact_id/alterations/alt0000005625


ALTER TABLE agentic_db_app_public.interactions 
  ALTER COLUMN type SET NOT NULL;

