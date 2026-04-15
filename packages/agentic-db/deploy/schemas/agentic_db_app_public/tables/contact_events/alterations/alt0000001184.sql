-- Deploy: schemas/agentic_db_app_public/tables/contact_events/alterations/alt0000001184
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_events/table


COMMENT ON TABLE "agentic_db_app_public".contact_events IS E'@behavior +manyToMany';

