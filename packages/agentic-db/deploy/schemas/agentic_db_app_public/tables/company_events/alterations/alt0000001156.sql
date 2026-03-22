-- Deploy: schemas/agentic_db_app_public/tables/company_events/alterations/alt0000001156
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_events/table
-- requires: schemas/agentic_db_app_public/tables/contact_events/policies/auth_del_entity_membership/policy


COMMENT ON TABLE "agentic_db_app_public".company_events IS E'@behavior +manyToMany';

