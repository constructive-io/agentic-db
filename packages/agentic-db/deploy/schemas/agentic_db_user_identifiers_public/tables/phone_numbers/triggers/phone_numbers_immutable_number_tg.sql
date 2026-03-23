-- Deploy: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/triggers/phone_numbers_immutable_number_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/table


CREATE TRIGGER phone_numbers_immutable_number_tg
BEFORE UPDATE ON agentic_db_user_identifiers_public.phone_numbers
FOR EACH ROW
WHEN (OLD.number IS DISTINCT FROM NEW.number AND OLD.number IS NOT NULL)
EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'number' );

