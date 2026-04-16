-- Deploy: schemas/agentic_db_app_public/tables/contact_events/alterations/alt0000000234
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_events/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


COMMENT ON TABLE agentic_db_app_public.contact_events IS E'@behavior +manyToMany';

