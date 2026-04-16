-- Deploy: schemas/agentic_db_app_public/tables/email_attachments/columns/created_at/alterations/alt0000015758
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_attachments/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- requires: schemas/agentic_db_app_public/tables/email_attachments/columns/created_at/column


ALTER TABLE agentic_db_app_public.email_attachments 
  ALTER COLUMN created_at SET NOT NULL;

