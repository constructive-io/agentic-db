-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/membership_types/columns/description/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".membership_types 
  DROP COLUMN description RESTRICT;


