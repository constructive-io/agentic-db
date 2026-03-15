-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/org_permission_defaults/columns/entity_id/alterations/alt0000000292


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-permissions-public".org_permission_defaults 
  ALTER COLUMN entity_id DROP NOT NULL;


