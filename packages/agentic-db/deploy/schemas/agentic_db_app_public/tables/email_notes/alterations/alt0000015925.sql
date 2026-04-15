-- Deploy: schemas/agentic_db_app_public/tables/email_notes/alterations/alt0000015925
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_notes/table
-- requires: schemas/agentic_db_app_public/tables/email_recipients/indexes/email_recipients_contact_id_idx


COMMENT ON TABLE agentic_db_app_public.email_notes IS E'@behavior +manyToMany';

