-- Deploy: schemas/agentic_db_app_public/tables/deal_contacts/alterations/alt0000001170
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/table
-- requires: schemas/agentic_db_app_public/tables/event_venues/policies/auth_del_entity_membership/policy


COMMENT ON TABLE "agentic_db_app_public".deal_contacts IS E'@behavior +manyToMany';

