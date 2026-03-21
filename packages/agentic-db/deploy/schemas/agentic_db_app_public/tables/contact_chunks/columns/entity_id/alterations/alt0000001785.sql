-- Deploy: schemas/agentic_db_app_public/tables/contact_chunks/columns/entity_id/alterations/alt0000001785
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/table
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/tags/columns/usage_count/alterations/alt0000001781


ALTER TABLE "agentic_db_app_public".contact_chunks 
  ALTER COLUMN entity_id SET NOT NULL;

