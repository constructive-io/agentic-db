-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/tools/columns/auth_method/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tools 
  DROP COLUMN auth_method RESTRICT;


