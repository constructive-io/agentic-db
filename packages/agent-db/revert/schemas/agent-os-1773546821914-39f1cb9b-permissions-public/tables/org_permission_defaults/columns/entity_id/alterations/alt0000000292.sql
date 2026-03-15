-- Revert: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/org_permission_defaults/columns/entity_id/alterations/alt0000000292


ALTER TABLE "agent-os-1773546821914-39f1cb9b-permissions-public".org_permission_defaults 
  ALTER COLUMN entity_id DROP NOT NULL;


