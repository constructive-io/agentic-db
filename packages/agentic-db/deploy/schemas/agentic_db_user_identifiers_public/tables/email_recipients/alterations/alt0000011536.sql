-- Deploy: schemas/agentic_db_user_identifiers_public/tables/email_recipients/alterations/alt0000011536
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/email_recipients/table
-- requires: schemas/agentic_db_app_public/tables/thread_participants/policies/auth_del_entity_membership/policy


COMMENT ON TABLE agentic_db_user_identifiers_public.email_recipients IS E'@behavior +manyToMany';

