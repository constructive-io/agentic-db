-- Revert: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/session_credentials/columns/org_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".session_credentials 
  DROP COLUMN org_id RESTRICT;


