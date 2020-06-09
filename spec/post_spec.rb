describe "Cadastro de usuário" do
  it "Novo usuário" do
    Database.new.delete_users("email@teste.com")

    result = HTTParty.post(
      "http://192.168.99.100:3001/user",
      body: { full_name: "Fernando Papito", email: "email@teste.com", password: "jarvis123" }.to_json,
      headers: {
        "Content-Type" => "application/json",
      },
    )
    puts result.response.code
    puts result
    expect(result.response.code).to eql "200"
  end
end
