-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/session_archives/constraints/session_archives_session_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/session_archives/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_tools/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".session_archives 
  ADD CONSTRAINT session_archives_session_id_fkey 
    FOREIGN KEY(session_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-app-public".sessions (id) 
    ON DELETE CASCADE;

