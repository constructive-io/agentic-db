-- Deploy: schemas/agentic_db_app_public/tables/contact_links/columns/entity_id/alterations/alt0000001855
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_links/table
-- requires: schemas/agentic_db_app_public/tables/contact_links/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".contact_links 
  ALTER COLUMN entity_id SET NOT NULL;

