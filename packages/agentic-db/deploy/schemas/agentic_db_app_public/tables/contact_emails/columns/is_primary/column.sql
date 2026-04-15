-- Deploy: schemas/agentic_db_app_public/tables/contact_emails/columns/is_primary/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_emails/table


ALTER TABLE "agentic_db_app_public".contact_emails 
  ADD COLUMN is_primary bool;

