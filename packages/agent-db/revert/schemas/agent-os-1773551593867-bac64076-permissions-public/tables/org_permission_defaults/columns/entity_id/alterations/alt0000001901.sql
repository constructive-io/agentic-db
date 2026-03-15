-- Revert: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/org_permission_defaults/columns/entity_id/alterations/alt0000001901


ALTER TABLE "agent-os-1773551593867-bac64076-permissions-public".org_permission_defaults 
  ALTER COLUMN entity_id DROP NOT NULL;


