-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".session_archives 
  ADD COLUMN updated_at timestamptz;

