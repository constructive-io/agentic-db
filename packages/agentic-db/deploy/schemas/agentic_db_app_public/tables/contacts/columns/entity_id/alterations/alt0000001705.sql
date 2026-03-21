-- Deploy: schemas/agentic_db_app_public/tables/contacts/columns/entity_id/alterations/alt0000001705
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/images/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".contacts 
  ALTER COLUMN entity_id SET NOT NULL;

