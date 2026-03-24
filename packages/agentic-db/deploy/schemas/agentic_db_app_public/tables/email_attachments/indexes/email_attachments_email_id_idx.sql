-- Deploy: schemas/agentic_db_app_public/tables/email_attachments/indexes/email_attachments_email_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_attachments/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/email_attachments/columns/email_id/column


CREATE INDEX email_attachments_email_id_idx ON "agentic_db_app_public".email_attachments USING BTREE ( email_id );

