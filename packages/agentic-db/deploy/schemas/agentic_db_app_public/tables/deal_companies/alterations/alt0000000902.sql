-- Deploy: schemas/agentic_db_app_public/tables/deal_companies/alterations/alt0000000902
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_companies/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


COMMENT ON TABLE agentic_db_app_public.deal_companies IS E'@behavior +manyToMany';

