-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/membership_types/columns/prefix/alterations/alt0000000022


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".membership_types 
  ALTER COLUMN prefix DROP NOT NULL;


