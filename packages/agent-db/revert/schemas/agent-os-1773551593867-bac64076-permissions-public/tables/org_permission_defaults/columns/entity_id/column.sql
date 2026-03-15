-- Revert: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/org_permission_defaults/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-permissions-public".org_permission_defaults 
  DROP COLUMN entity_id RESTRICT;


