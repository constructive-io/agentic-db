-- Deploy: schemas/agentic_db_app_public/tables/companies_chunks/alterations/alt0000000908
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies_chunks/table


COMMENT ON TABLE "agentic_db_app_public".companies_chunks IS E'@@chunksOf {"parent_fk": "companies_id", "parent_table": "companies"}';

