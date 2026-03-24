-- Deploy: schemas/agentic_db_app_public/tables/email_attachments/columns/entity_id/alterations/alt0000001811
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_attachments/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/email_attachments/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".email_attachments 
  ALTER COLUMN entity_id SET NOT NULL;

