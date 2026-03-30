-- Deploy: schemas/agentic_db_app_public/tables/emails/columns/email_thread_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


ALTER TABLE "agentic_db_app_public".emails 
  ADD COLUMN email_thread_id uuid;

