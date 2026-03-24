-- Deploy: schemas/agentic_db_app_public/tables/email_notes/alterations/alt0000002009
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_notes/table
-- requires: schemas/agentic_db_app_public/tables/email_recipients/policies/auth_del_entity_membership/policy


COMMENT ON TABLE "agentic_db_app_public".email_notes IS E'@behavior +manyToMany';

