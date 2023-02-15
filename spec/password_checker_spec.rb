require 'password_checker'

RSpec.describe PasswordChecker do
    context "returns err for 'abcd1234'" do
        it "fails" do
            password1 = PasswordChecker.new
            expect { password1.check("abc123") }.to raise_error "Invalid password, must be 8+ characters."
        end
    end
end
