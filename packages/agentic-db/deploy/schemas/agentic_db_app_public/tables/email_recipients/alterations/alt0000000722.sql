-- Deploy: schemas/agentic_db_app_public/tables/email_recipients/alterations/alt0000000722
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_recipients/table
-- requires: schemas/agentic_db_app_public/tables/thread_participants/indexes/thread_participants_contact_id_idx


COMMENT ON TABLE agentic_db_app_public.email_recipients IS E'@behavior +manyToMany';

