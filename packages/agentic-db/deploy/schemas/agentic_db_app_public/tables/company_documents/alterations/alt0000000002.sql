-- Deploy: schemas/agentic_db_app_public/tables/company_documents/alterations/alt0000000002
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_documents/table


COMMENT ON TABLE agentic_db_app_public.company_documents IS E'@behavior +manyToMany';

