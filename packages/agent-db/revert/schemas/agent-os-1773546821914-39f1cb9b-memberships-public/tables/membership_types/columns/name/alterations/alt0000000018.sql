-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/membership_types/columns/name/alterations/alt0000000018


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".membership_types 
  ALTER COLUMN name DROP NOT NULL;


