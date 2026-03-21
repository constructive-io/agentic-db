-- Deploy: schemas/agentic_db_app_public/tables/contact_notes/alterations/alt0000004771
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_notes/table
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/policies/auth_del_entity_membership/policy


COMMENT ON TABLE agentic_db_app_public.contact_notes IS E'@behavior +manyToMany';

