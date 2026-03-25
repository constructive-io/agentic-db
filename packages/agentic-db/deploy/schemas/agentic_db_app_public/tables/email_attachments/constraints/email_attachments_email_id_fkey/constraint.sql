-- Deploy: schemas/agentic_db_app_public/tables/email_attachments/constraints/email_attachments_email_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/email_attachments/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


ALTER TABLE "agentic_db_app_public".email_attachments 
  ADD CONSTRAINT email_attachments_email_id_fkey 
    FOREIGN KEY(email_id) 
    REFERENCES "agentic_db_app_public".emails (id) 
    ON DELETE CASCADE;

