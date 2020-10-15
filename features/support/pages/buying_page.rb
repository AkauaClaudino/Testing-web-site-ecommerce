class BuyingPage 
    include Capybara::DSL
   
  def women_clothe   
    find(:xpath,'//a[@class="sf-with-ul"][contains(text(),"Women")]').click
  end
     
  def selecionar1
    find(:xpath,'//*[@id="center_column"]/ul/li[1]/div/div[2]/div[2]/a[1]').click
    find(:xpath,'//span[contains(text(),"Proceed to checkout")]').click
  end

  def payment
    click_link 'Proceed to checkout'
    click_button 'Proceed to checkout'
    find('#uniform-cgv').click
    click_button 'Proceed to checkout'
    find('.bankwire').click
    click_button 'I confirm my order'
  end   

  def add
    for i in 1..3
      find('.icon-plus').click
    end
  end
 
end


