-- Deploy: schemas/agentic_db_app_public/tables/email_recipients/alterations/alt0000000002
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_recipients/table


COMMENT ON TABLE agentic_db_app_public.email_recipients IS E'@behavior +manyToMany';

