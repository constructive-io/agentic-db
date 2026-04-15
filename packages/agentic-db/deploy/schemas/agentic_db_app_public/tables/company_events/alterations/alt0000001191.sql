-- Deploy: schemas/agentic_db_app_public/tables/company_events/alterations/alt0000001191
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_events/table


COMMENT ON TABLE "agentic_db_app_public".company_events IS E'@behavior +manyToMany';

