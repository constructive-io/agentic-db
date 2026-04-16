-- Deploy: schemas/agentic_db_app_public/tables/company_events/alterations/alt0000000238
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_events/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


COMMENT ON TABLE agentic_db_app_public.company_events IS E'@behavior +manyToMany';

